calculate_actor_frequency <- function(data) {
    top_10_popular_actor <- data %>%
        filter(role == "ACTOR") %>%
        group_by(name) %>%
        summarise(max_imdb_score = max(imdb_score)) %>%
        arrange(desc(max_imdb_score)) %>%
        top_n(10, max_imdb_score)

    actor_frequency <- data %>%
        filter(role == "ACTOR") %>%
        filter(name %in% top_10_popular_actor$name) %>%
        count(name) %>%
        rename(Actor = name, Frequency = n)

    return(actor_frequency)
}