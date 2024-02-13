from app import app # Flask instance of the API

def test_index_route():
    response = app.test_client().get('/')
    assert response.status_code == 200
    assert response.data.decode('utf-8') == 'Hello Chitkara!'
    print("Test Passed Successfully!")

if __name__ == "__main__":
    test_index_route()
