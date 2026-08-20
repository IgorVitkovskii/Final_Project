# Игорь Витковский, 45-ая когорта-Финальный проект
import sender_stand_request
def test_get_order_by_track_success():
#Создание нового заказа через API
    create_order_response = sender_stand_request.create_order()
#Получаем трек номер из ответа
    track = create_order_response.json()["track"]
#GET запроспо полученному трек номеру
    get_order_response = sender_stand_request.get_order_by_track(track)
#Проверяем, что сервер успешно обработал запрос
    assert get_order_response.status_code == 200