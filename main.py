import telebot
from telebot import types

bot = telebot.TeleBot("8766977724:AAHQ-iXx2ACvlPdYIrkraK80AfysxWqQ1zw")

@bot.message_handler(commands=['start'])
def start_message(message):
    markup = types.InlineKeyboardMarkup()
    button = types.InlineKeyboardButton(text="РосВПН", url="https://t.me/FemboyVpnrobot")

    markup.add(button)
    text = """Мы переехали! 🔥

Мы обновились! Теперь наш VPN полностью защищен от любых глушилок, блокировок и ТСПУ. Картинки грузятся, видео не зависают, сайты «летают».

100% обход замедлений И глушилок
Стабильная скорость 24/7
Удобно пользоваться прямо в Telegram

Забирай свой безлимитный доступ по самой честной цене 👇🏻"""

    bot.send_message(message.chat.id, text, parse_mode='HTML', reply_markup=markup)


bot.infinity_polling()
