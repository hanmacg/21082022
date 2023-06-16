plot_popularity_band <- function(data, x_var, plot_title) {
    data <- data %>%
        mutate(album = factor({{x_var}}))

    plot <- ggplot(data, aes(x = {{x_var}}, y = popularity, fill = {{x_var}})) +
        geom_boxplot(alpha = 0.4) +
        geom_jitter(size = 1, alpha = 0.8) +
        theme_minimal() +
        labs(x = "Album", y = "Popularity", title = plot_title) +
        theme(axis.text.x = element_blank())

    return(plot)
}