library(shiny)

shinyUI(
  navbarPage(
    "Climate Dashboard",
    
    tabPanel(
      "Energy & Emissions",
      sidebarLayout(
        sidebarPanel(
          uiOutput("year_selector"),
          checkboxInput("show_legend1", "Show Legend", TRUE),
          helpText("Explore whether higher renewable energy use corresponds to lower CO₂ emissions.")
        ),
        mainPanel(
          plotly::plotlyOutput("plot1", height = 500)
        )
      )
    ),
    
    tabPanel(
      "Temperature & Extreme Weather",
      sidebarLayout(
        sidebarPanel(
          uiOutput("country_selector"),
          checkboxInput("show_points2", "Show Data Points", TRUE),
          checkboxInput("show_legend2", "Show Legend", TRUE),
          helpText("Up to 5 countries can be selected.")
        ),
        mainPanel(
          plotly::plotlyOutput("plot2", height = 500)
        )
      )
    )
  )
)

