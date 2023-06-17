plot_runtime_distribution <- function(data, type) {

    dist <- data %>%
        filter(type == {{type}}) %>%
        filter(tmdb_popularity >= 100) %>%
        distinct(title, .keep_all = TRUE) %>%
        ggplot(aes(x = runtime)) +
        geom_histogram(binwidth = 10, fill = "red", color = "white") +
        xlab("Runtime") +
        ylab("Count") +
        ggtitle(paste("Distribution of Most Popular", type, "'s Runtimes")) +
        theme_light()

    print(dist)
}