get_openet_api_key <- function() {
  key <- Sys.getenv("OPENET_API_KEY")
  if (key == "") {
    stop(
      "The OPENET_API_KEY environment variable is not set.\n",
      "Please set it by running `usethis::edit_r_environ()` and adding the key there.\n",
      "After that, restart your R session for the changes to take effect.\n",
      "If you need to register an API key, visit https://account.etdata.org/settings/api."
    )
  }
  return(key)
}