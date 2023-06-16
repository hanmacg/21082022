generate_summary_stats_extra <- function(data, start_date) {
    summary_stats <- data %>%
        filter(date >= as.Date(start_date)) %>%
        group_by(year) %>%
        summarize(
            sunshine_mean = mean(sunshine, na.rm = TRUE),
            cloud_cover_mean = mean (cloud_cover, na.rm = TRUE),
            precipitation_mean = max(precipitation, na.rm = TRUE)
        )

    summary_table <- kable(summary_stats, caption = "Stats Table", align = "c") %>%
        kable_styling()

    return(summary_table)
}