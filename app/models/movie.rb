class Movie < ActiveRecord::Base
    # Create
    def self.create_with_title(title)
      create(title: title)
    end
  
    # Read
    def self.first_movie
      first
    end
  
    def self.last_movie
      last
    end
  
    def self.movie_count
      count
    end
  
    def self.find_movie_with_id(id)
      find(id)
    end
  
    def self.find_movie_with_attributes(attributes)
      find_by(attributes)
    end
  
    def self.find_movies_after_2002
      where('release_date > ?', 2002)
    end
  
    # Update
    def update_with_attributes(attributes)
      update(attributes)
    end
  
    def self.update_all_titles(title)
      update_all(title: title)
    end
  
    # Delete
    def self.delete_by_id(id)
      find(id).destroy
    end
  
    def self.delete_all_movies
      destroy_all
    end
  end
  