plot_lowest_le <- function(data, y_var, title) {
    # Create the ggplot line plot
    p <- ggplot(data, aes(x = date, y = {{y_var}}, color = location)) +
        geom_line() +
        labs(x = "Date", y = deparse(substitute(y_var))) +
        ggtitle(title) +
        theme_minimal()

    # Return the plot
    return(p)
}