# Игорь Витковский, 45-ая когорта-Финальный проект
import sender_stand_request
def test_get_order_by_track_success():
    create_order_response = sender_stand_request.create_order()
    track = create_order_response.json()["track"]
    get_order_response = sender_stand_request.get_order_by_track(track)
    assert get_order_response.status_code == 200