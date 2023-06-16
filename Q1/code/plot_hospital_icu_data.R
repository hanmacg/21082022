plot_hospital_icu_data <- function(data, y1_variable, y2_variable) {
    ggplot(data, aes(x = date)) +
        geom_line(aes(y = {{ y1_variable }}, color = "Hospitalizations")) +
        geom_line(aes(y = {{ y2_variable }}, color = "ICU Admissions")) +
        labs(x = "Date", y = "Count") +
        ggtitle("Hospitalizations and ICU Admissions over Time") +
        scale_color_manual(values = c("Hospitalizations" = "blue", "ICU Admissions" = "red"))
}