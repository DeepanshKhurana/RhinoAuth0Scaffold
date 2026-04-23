box::use(
  bslib[
    card,
    card_body,
    card_header,
    layout_columns,
  ],
  shiny[
    NS,
    moduleServer,
    renderPrint,
    verbatimTextOutput,
  ],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  layout_columns(
    card(
      card_header("User Information"),
      card_body(verbatimTextOutput(ns("user_info")))
    ),
    card(
      card_header("Credential Information"),
      card_body(verbatimTextOutput(ns("credential_info")))
    ),
    col_widths = c(6, 6)
  )
}

#' @export
server <- function(id, session) {
  moduleServer(id, function(input, output, session_module) {
    output$user_info <- renderPrint({
      session$userData$auth0_info
    })

    output$credential_info <- renderPrint({
      session$userData$auth0_credentials
    })
  })
}
