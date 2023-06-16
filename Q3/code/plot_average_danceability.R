plot_average_danceability <- function(data, x_var) {

    plot <- ggplot(data, aes(x = {{x_var}}, y = danceability, fill = {{x_var}})) +
        geom_bar(stat = "identity") +
        xlab("Album") +
        ylab("Average Danceability") +
        ggtitle("Average Danceability per Album") +
        theme_minimal() +
        theme(axis.text.x = element_text(size = 7, angle = 45, hjust = 1)) +
        guides(fill = FALSE)

    return(plot)
}