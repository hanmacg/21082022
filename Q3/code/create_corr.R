create_corr <- function(data, x_var, y_var, plot_title) {

    corr <- ggplot(data, aes(x = {{x_var}}, y = {{y_var}})) +
        geom_point() +  geom_smooth(method = "lm", se = FALSE, color = "blue") +
        labs(title = plot_title,
             x = deparse(substitute(x_var)),
             y = deparse(substitute(y_var))) +
        theme_minimal()
}