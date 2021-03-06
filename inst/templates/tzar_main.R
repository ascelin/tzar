#===============================================================================
#
#                               tzar_main.R
#
#===============================================================================

#' Wrapper function to call your application code from tzar
#'
#' @param parameters List of parameters controlling the current run (usually
#'   decoded from project.yaml by tzar)
#' @param emulating_tzar boolean flag indicating whether running under tzar
#' emulation
#'
#' @return Returns nothing
#' @export
#'
#' @examples \dontrun{
#' tzar_main (parameters)
#'}

tzar_main <- function (parameters, emulating_tzar=FALSE)
    {
    cat ("\n\nIn tzar_main now.\n\n")

#    cat ("\n    parameters = \n\n")
#    print (parameters)

    my_main_code (parameters, emulating_tzar)

    cat ("\n\nAll done now...\n\n")
    }

#===============================================================================

#' Convenience function to call run_tzar without having to enter arguments
#'
#' @param main_function  name of function to call to run under tzar or tzar emulation
#' @param parameters_yaml_file_path Full path with file name for the
#' project.yaml file
#' @param tzar_emulation_yaml_file_path Full path with file name for the
#' yaml file containing control values for tzar emulation
#'
#' @return Returns nothing
#' @export
#'
#' @examples \dontrun{
#' runt ()
#'}

runt <- function ()
    {
    tzar::run_tzar (main_function = tzar_main,
                    parameters_yaml_file_path = "./project.yaml",
                    tzar_emulation_yaml_file_path = "./tzar_emulation.yaml")
    }

#===============================================================================


