genre_plot <- function(data) {
    plot_data <- data %>%
        separate_rows(genres, sep = ", ") %>%
        mutate(genres = str_remove_all(genres, "\\[|\\]"),
               genres = str_trim(genres)) %>%
        filter(genres != "") %>%
        group_by(genres) %>%
        summarize(average_popularity = mean(tmdb_popularity, na.rm = TRUE))

    ggplot(plot_data, aes(x = genres, y = average_popularity)) +
        geom_bar(stat = "identity", fill = "red") +
        xlab("Genres") +
        ylab("Average TMDb Popularity") +
        ggtitle("Average TMDb Popularity by Genres") +
        theme_light() +
        theme(axis.text.x = element_text(angle = 45, hjust = 1))
}






