#' @name figlet
#' @title figlet
#' @description Run figlet with input and output files.
#' @param arglist Arguments for figlet
#' @param input_file Text input file
#' @param output_file ASCII art output file
#' @details If no input_file, will use arglist argument.
#' If no output_file, will print to console.
#' @example /examples/example.R
#' @export
figlet <- function(arglist = arglist_get(...), input_file = NULL,
                   output_file = NULL) {
  wd <- NULL
  # construct shell script from arglist
  arglist <- c('figlet', arglist)
  if (!is.null(input_file)) {
    # cat the input_file contents to figlet
    # (basename is used because on the container,
    #  filepaths cannot be used.)
    arglist <- c('cat', basename(input_file), '|', arglist)
  }
  if (!is.null(output_file)) {
    # write out the results of figlet to output_file
    arglist <- c(arglist, '>', basename(output_file))
    # determine where returned files should be sent
    wd <- dirpath_get(output_file)
  }
  # write arglist to temp file
  script <- file.path(tempdir(), 'script.sh')
  on.exit(file.remove(script))
  # ensure script is written in binary format
  script_cnntn <- file(script, 'wb')
  cmds <- paste(arglist, collapse = ' ')
  # debug print
  print(cmds)
  write(x = cmds, file = script_cnntn)
  close(script_cnntn)
  # initialise outsider container by specifying the command,
  # the arguments, the files to be sent, and the directory to where
  # returned files should be sent
  otsdr <- outsider_init(pkgnm = 'om..figlet', cmd = 'bash',
                         arglist = 'script.sh', wd = wd,
                         files_to_send = c(script, input_file))
  # run the command
  run(otsdr)
}
