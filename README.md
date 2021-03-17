# web_scraper

![scraper](https://user-images.githubusercontent.com/22328716/111468176-2d600180-871d-11eb-87bf-6455009a8e0b.png)

# Built with

- Ruby
- Vscode
- Rubocop

# How to Use

The scrapper is a script file that was built in order to pull essential data of a Listing website. The listing website is www.meqasa.com. The Client wants to get the Status, description, location and number of beds, washroom and garage of houses listed on the website.

The Client wants to get a list of houses saved in an csv file to be able to assess the important details of houses listed on the website.

1)Output to the terminal essential information about the houses listed on the website
2)save that information into a data.csv file

# Prerequisites

If you intend to download the project, you will need to have Ruby already installed on your machine. For more information on how to install Ruby, follow [the link]('https://www.ruby-lang.org/en/downloads/')

# Installation Instructions

To get your own copy of the project simply clone the repository to your local machine.

Step 1: Using the Command Line, navigate into the location where you would like to have the repository. Then enter the following line of code:

git clone https://github.com/luqmanmusah/web_scraper.git

Step 2: Once the repo has been cloned, navigate inside it by entering the following command:

cd web_scraper

Step 3: Run bundle install in order to install the gems listed within the gem file.

Step 4: Once in the root directory of the repository, navigate inside it by entering the following command:

cd bin

Finally run the file by entering the following line of code to start:

ruby web_scraper.rb

You can then run whatever information you need in the byebug and all houses will be saved inside the csv file.


# Repository Contents

The code for the project is located in the ./bin folder.

The ./bin folder contains the  web_scrapper file in which methods are to be run. The ./spec contains spec_helper.rb default rspec files web_scraper_spec.rb a file created for checking all the methods in the web_scraper.rb file.

In addition to the above, the repo also contains . .rspec created by the rspec gem rubocop.yml for linting. license file for am Mit license. data.csv file which has been created by running the the scraper method. There is a readme file.

Gemfile where the gems(which allow additional important functionality) are listed gems used are gem 'httparty', - used for impotring plain html text from the website gem 'nokogiri', - converting plain text into a type doc object gem 'csv',- for writing into a new csv file gem 'and gem 'byebug',- to enable fix bugs and debug the project by going through each line.

# Running the tests instructions

In order to run the tests simply type rspec from the root folder of the project

# Author

👤 Luqman Musah

Github: [@luqmanmusah](https://github.com/luqmanmusah)

Linkedin: [@luqman-musah](https://www.linkedin.com/in/luqman-musah/)

# Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [@issues page.](https://github.com/luqmanmusah/web_scraper/issues)

# 🤝 Show your support

Give a ⭐️ if you like this project!

# 📝 License

This project is [@MIT](https://github.com/git/git-scm.com/blob/master/MIT-LICENSE.txt) licensed.



