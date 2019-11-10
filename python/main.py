import requests
from bs4 import BeautifulSoup
import csv
import statistics
from datetime import date
from flask import Flask, render_template

total_price = 0
total_count = 0
total_lowest = 1000
total_highest = 10
total_list = []

def nextPage(page):
    url = "https://www.myhome.ge/en/s/Apartment-for-rent-Tbilisi?Keyword=Tbilisi&cities=1996871&PrTypeID=1&AdTypeID=3&GID=1996871&Page=" + str(
             page) + "&mapC=41.73188365%2C44.8368762993663"
    return url


def get_average_price(current_url):
    source = requests.get(current_url)
    main_text = source.text
    soup = BeautifulSoup(main_text)

    prices = soup.findAll('b', {'class': "item-price-usd"})

    priceTotal = 0
    count = 0
    priceList = []

    for price in prices:
        # убираем запятую из текста
        priceText = price.text.replace(',', '')
        # добавляем число в список
        priceList.append(int(priceText))
        # считаем общую стоимость квартир
        priceTotal = priceTotal + int(priceText)
        # считаем количество квартир
        count = count + 1

    # считаем среднюю стоимость квартиры
    averagePrice = priceTotal / count
    # сортируем список
    priceList.sort()
    # находим самую дешёвую и самую дорогую квартиру
    lowestPrice = priceList[0]
    highestPrice = priceList[-1]

    global total_price
    total_price = total_price + priceTotal

    global total_count
    total_count = total_count + count

    global total_lowest
    if lowestPrice < total_lowest:
        total_lowest = lowestPrice

    global total_highest
    if highestPrice > total_highest and highestPrice < 5000:
        total_highest = highestPrice

    global total_list
    total_list.extend(priceList)

    # выводим результат
    output = 'Средняя цена аренды квартиры в Тбилиси — $' + str(round(averagePrice, 2))
    output2 = "Самая дешёвая квартира стоит $" + str(lowestPrice) + ", а самая дорогая — $" + str(highestPrice)
    #print(output)
    #print(output2)

    with open('writeData.csv', mode='a') as file:
        writer = csv.writer(file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

        # way to write to csv file
        writer.writerow([priceTotal, lowestPrice, highestPrice, count])


def main():
    # количество страниц
    pages = 10
    page = 1
    while page <= pages:
        print(str(page) + " страница")
        # забираем URL текущей страницы
        current_page = nextPage(page)
        # получаем все цены
        get_average_price(current_page)
        page = page + 1

    global total_price
    global total_count
    global total_lowest
    global total_highest
    global total_list
    average_total = total_price / total_count
    average_total_rounded = round(average_total,2)

    total_list_median = statistics.median(total_list)
    total_list_median_rounded = round(total_list_median, 2)

    output1 = "Просканировано " + str(pages) + " страниц. Средняя цена аренды — $" + str(average_total_rounded)
    output2 = "Самая высокая цена аренды — $" + str(total_highest) + ". А самая низкая - $" + str(total_lowest)
    output3 = "А это медиана — $" + str(total_list_median_rounded)

    output_final = output1 + "\n" + output2 + "\n" + output3

    print(output_final)

    date_for_text = date.today().strftime("%m%d%y")
    file_name = date_for_text + "_" + str(pages) + "pages" + ".txt"

    saveFile = open(file_name, "w")
    saveFile.write(output_final)
    saveFile.close()



app = Flask(__name__)


@app.route('/')
def index():
    # render your html template
    return render_template('flat.html')


@app.route('/python')
def do_something():
    main()


if __name__ == '__main__':
    app.run()

main()
