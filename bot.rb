require 'telegram/bot'

# token = '-----'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
      when '/start'
        bot.api.sendMessage(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")

      when '/photo'
        bot.api.sendPhoto(chat_id: message.chat.id, photo: File.new('~/Desktop/photo.jpg'))
    end
  end
end