import requests
import configuration
import data
def create_order():
#POSTзапрос, создается новый заказ через API
#Полный URL стенда+путь к эндпоинду
    return requests.post(
        configuration.URL_SERVICE + configuration.CREATE_ORDER_PATH,
        json=data.order_body
    )
#GETзапрос, информация о заказе по трек номеру
#Ответ от сервера, информация о заказе
def get_order_by_track(track):
    return requests.get(
        configuration.URL_SERVICE + configuration.GET_ORDER_BY_TRACK_PATH,
        params={"t": track}
    )