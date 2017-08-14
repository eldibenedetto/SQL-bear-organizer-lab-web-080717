def selects_all_female_bears_return_name_and_age
  <<-SQL
    SELECT name, age FROM bears WHERE gender = "F"
  SQL
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  <<-SQL
    SELECT name FROM bears ORDER BY name;
  SQL
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  <<-SQL
    SELECT name, age FROM bears WHERE alive = 1 ORDER BY age;
  SQL
end

def selects_oldest_bear_and_returns_name_and_age
  <<-SQL
    SELECT name, age FROM bears ORDER BY age DESC LIMIT 1;
  SQL
end

def select_youngest_bear_and_returns_name_and_age
  <<-SQL
    SELECT name, age FROM bears ORDER BY age LIMIT 1;
  SQL
end

def selects_most_prominent_color_and_returns_with_count
  <<-SQL
    SELECT color, COUNT(color) AS color_count
    FROM bears
    GROUP BY color
    ORDER BY color DESC
    LIMIT 1
    ;
  SQL
end

def counts_number_of_bears_with_goofy_temperaments
  <<-SQL
    SELECT COUNT(temperament) AS goofy_count
    FROM bears
    WHERE temperament = "goofy"
    ;
  SQL
end

def selects_bear_that_killed_Tim
  <<-SQL
    SELECT * FROM bears WHERE name IS NULL;
  SQL
end
