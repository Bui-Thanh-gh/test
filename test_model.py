import tensorflow as tf
import keras

def test_imports():
    assert tf.__version__ is not None, "TensorFlow không tải được!"
    assert keras.__version__ is not None, "Keras không tải được!"
    print("Môi trường AI khởi tạo thành công. Sẵn sàng train/predict!")

if __name__ == "__main__":
    test_imports()