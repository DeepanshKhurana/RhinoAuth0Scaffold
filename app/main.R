options(shiny.port = 8080)

box::use(
  auth0[
    auth0_info,
    auth0_server,
    auth0_ui,
    logoutButton,
  ],
  bslib[
    page_fluid,
  ],
  shiny[
    div,
    h2,
  ],
)

box::use(
  app/view/mod_profile,
)

login_info <- auth0_info()

#' @export
ui <- auth0_ui(
  page_fluid(
    div(
      class = "title-bar",
      h2("Rhino Auth0 Scaffold", style = "margin: 0;"),
      logoutButton()
    ),
    mod_profile$ui("profile")
  ),
  info = login_info
)

#' @export
server <- auth0_server(
  function(input, output, session) {
    mod_profile$server("profile", session)
  },
  info = login_info
)
