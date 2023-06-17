plot_app_installs <- function(data) {
    installp <- data %>%
        filter(Category %in% c("EVENTS", "EDUCATION", "ART_AND_DESIGN", "BOOKS_AND_REFERENCE", "PERSONALIZATION", "PARENTING", "BEAUTY", "HEALTH_AND_FITNESS", "GAME", "SOCIAL")) %>%
        ggplot(aes(x = Category, fill = Installs)) +
        geom_bar() +
        labs(x = "", y = "Count", fill = "Installs") +
        ggtitle("Number of Apps and Associated Installs by Category") +
        theme_minimal() +
        theme(
            axis.text.x = element_text(size = 8, angle = 45, hjust = 1),
            legend.key.size = unit(0.5, "cm"),
            legend.key.height = unit(0.5, "cm"),
            legend.text = element_text(size = 8),
            legend.title = element_text(size = 8),
            plot.title = element_text(size = 10, margin = margin(b = 20)),
            axis.title.y = element_text(size = 10),
            legend.position = "right",
            legend.box = "vertical",
            legend.margin = margin(0, 0, 0, 0)
        )

    return(installp)
}