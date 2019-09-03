require 'pg'

class Message
    def self.add(message)
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'test_message_db')
        else 
            connection = PG.connect(dbname: 'message_db')
        end
        connection.exec("INSERT INTO messages (message_text) VALUES('#{message}');")
    end
    def self.list
        connection = PG.connect(dbname: 'message_db')
        all_messages = connection.exec("SELECT * FROM messages;")
        all_messages.map{ |message_row| message_row['message_text'] }
    end
end



