plot_yearly_data <- function(data, y_variable, y_label, title) {
    plot <- ggplot(data = data, aes(x = year, y = {{ y_variable }})) +
        geom_line(color = "red", size = 1) +
        xlab("Year") +
        ylab(y_label) +
        ggtitle(title) +
        theme_minimal()

    return(plot)
}