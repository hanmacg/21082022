plot_covid_and_vaccination <- function(data) {
    # Convert the "date" variable to a date format
    data$date <- as.Date(data$date)

    # Figure 1: Calculate the average cases per million per date for each continent
    average_cases_per_million <- data %>%
        group_by(date, continent) %>%
        summarize(average_cases_per_million = mean(total_cases_per_million, na.rm = TRUE))

    # Create the ggplot line plot for COVID-19 cases
    p1 <- ggplot(average_cases_per_million, aes(x = date, y = average_cases_per_million, color = continent)) +
        geom_line() +
        labs(x = "Date", y = "Average Cases per Million") +
        ggtitle("Average COVID-19 Cases per Million by Continent over Time")

    # Figure 2: Calculate the average fully vaccinated per hundred people per date for each continent
    average_vacc_per_hundred <- data %>%
        group_by(date, continent) %>%
        summarize(average_vacc_per_hundred = mean(people_fully_vaccinated_per_hundred, na.rm = TRUE))

    # Create the ggplot line plot for vaccinations
    p2 <- ggplot(average_vacc_per_hundred, aes(x = date, y = average_vacc_per_hundred, color = continent)) +
        geom_line() +
        labs(x = "Date", y = "Average Fully Vaccinated") +
        ggtitle("Average Fully Vaccinated per Hundred People")

    # Return a list containing the two plots
    list(plot_cases = p1, plot_vaccinations = p2)
}

