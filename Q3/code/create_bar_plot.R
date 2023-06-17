create_bar_plot <- function(data, x_col, y_col, xlab_text, ylab_text, title_text) {
    bar_plot <- data %>%
        ggplot(aes({{ x_col }}, {{ y_col }})) +
        geom_bar(stat = "identity", fill = "steelblue") +
        xlab({{ xlab_text }}) +
        ylab({{ ylab_text }}) +
        ggtitle({{ title_text }}) + theme_minimal()

    return(bar_plot)
}

