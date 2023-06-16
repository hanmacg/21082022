plot_monthly_data <- function(data, y_variable, y_label) {
    plot <- ggplot(data = data, aes(x = month, y = {{ y_variable }})) +
        geom_bar(stat = "identity", fill = "blue") +
        xlab("Month") +
        ylab(y_label) +
        ggtitle(paste("Monthly", y_label, "in London (2019 onwards)")) +
        theme_minimal() +
        theme(axis.text.x = element_text(angle = 45, hjust = 1))

    return(plot)
}