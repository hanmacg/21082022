generate_summary_stats <- function(data, start_date) {
    summary_stats <- data %>%
        filter(date >= as.Date(start_date)) %>%
        group_by(year) %>%
        summarize(
            min_temp = min(min_temp, na.rm = TRUE),
            max_temp = max(max_temp, na.rm = TRUE),
            avg_temp = mean(mean_temp, na.rm = TRUE)
        )

    summary_table <- kable(summary_stats, caption = "Stats Table", align = "c") %>%
        kable_styling()

    return(summary_table)
}






