plot_filtered_data <- function(data, y_variable, y_label, plot_title) {
    # Convert the "date" variable to a date format
    data$date <- as.Date(data$date)

    # Create the ggplot line plot
    ggplot(data, aes(x = date, y = {{ y_variable }}, fill = continent)) +
        geom_bar(stat = "identity", position = "dodge") +
        labs(x = "Date", y = y_label) +
        ggtitle(plot_title) +
        scale_fill_discrete(name = "Continent") + theme_minimal() + theme(axis.title = element_text(size = 8),   # Adjust axis title size
                                                                          plot.title = element_text(size = 10))
}