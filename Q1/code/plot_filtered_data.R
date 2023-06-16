plot_filtered_data <- function(data, y_variable) {
    # Convert the "date" variable to a date format
    data$date <- as.Date(data$date)

    # Create the ggplot line plot
    ggplot(data, aes(x = date, y = {{ y_variable }}, fill = continent)) +
        geom_bar(stat = "identity", position = "dodge") +
        labs(x = "Date", y = deparse(substitute(y_variable))) +
        ggtitle(paste("Weekly", deparse(substitute(y_variable)), "among Continents")) +
        scale_fill_discrete(name = "Continent")
}