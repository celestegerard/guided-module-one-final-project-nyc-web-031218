require 'pry'
require 'colorize'

class CommandLineInterface
  def hey
    puts "...........................".magenta
    puts "Hi there! What's your name?".yellow
  end

  def delivery_person
   user = gets.chomp
  end

  def greeting
   puts "#{delivery_person}, what a beautiful name!".yellow
  end

  def gets_user_input
   puts "Who are you ordering for today?".yellow
      user_input = gets.chomp
  end

  def retrieve_order(gets_user_input)
    puts "Awesome! #{gets_user_input} loves tacos.".yellow
    puts "Here is #{gets_user_input}'s usual order:".yellow
  end

  def find_student(gets_user_input)
    scholar = gets_user_input.capitalize
    stud = Student.find_by(name: scholar)
  end

  def student
    puts "#{search_by_name}"
  end

  def find_student_tacos(stud)
    stud.tacos
  end

  def show_tacos(tacos)
    tacos.each do |taco|
      puts taco.kind
    end
  end

  def show_taco_menu
    Taco.all.each do |taco|
      puts taco.kind
    end
  end

  # def student_tacos
  #
  # end

  def find_taco(string)
     Taco.find_by(kind: string)
  end

  # def update_taco(string)
  #   StudentTaco.find do |taco|
  #     taco.kind == string
  #     taco.update(kind: string)
  #   end
  # end

  # User.tacos

  def delete_taco(string)
    Taco.destroy(kind: string)
  end


  def prompt_change(found_student)
       puts "Would you like to add, switch-out, or delete a taco from the order?"
       input = gets.chomp
       if input == "add"
          puts "What taco would you like to add?"
          show_taco_menu
          puts "Please choose from the menu:"
          taco_to_add = gets.chomp.capitalize
          found_student.tacos << find_taco(taco_to_add)
          puts "The taco has been added to #{found_student.name}'s order".yellow
        # elsif input == "switch-out"
        #   puts "What taco would you like to switch-out?"
        #   found_student.tacos
        #   taco_to_switch = gets.chomp
        #   binding.pry
        #   puts "What taco would you like to order instead?"
        #   show_taco_menu
        #   puts "Please choose from the menu:"
        #   taco_to_update = gets.chomp.capitalize
        #   update_taco(taco_to_update)
        #   binding.pry
        #   puts "The taco has been updated to #{found_student.name}'s order".yellow
        elsif input == "delete"
          puts "What taco would you like to delete?"
          show_taco_menu
          puts "Please choose from the menu:"
          taco_to_delete = gets.chomp.capitalize
          found_student.tacos << destroy_taco(taco_to_add)
          puts "The taco has been deleted to #{found_student.name}'s order".yellow

       elsif input == "no"
           "Thank you for using TacoFinder. Have a nice day!"
         else
           puts "Sorry, we do not have the order for that person. Please try again."
       end
   end






  def run
    hey
    greeting
    input = gets_user_input
    retrieve_order(input)
    found_student = find_student(input)
    students_tacos = find_student_tacos(found_student)
    show_tacos(students_tacos)
    prompt_change(found_student)
    # Method that prompts add, delete, update


  end

end
