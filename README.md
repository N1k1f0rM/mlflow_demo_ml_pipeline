# MLflow Deployment Demo with PostgreSQL, MinIO, and Jupyter Notebook 🚀

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Docker](https://img.shields.io/badge/Docker-Containerized-blue)](https://www.docker.com/)
[![MLflow](https://img.shields.io/badge/MLflow-Platform-purple)](https://mlflow.org/)

Проект демонстрирует развертывание MLflow Tracking Server с использованием PostgreSQL для хранения метаданных и MinIO (S3-совместимое хранилище) для артефактов, а также пример логирования ML-экспериментов.

## 🛠️ Технологии

- **MLflow** - трекинг экспериментов и моделей
- **PostgreSQL** - хранение метаданных экспериментов
- **MinIO** - хранение артефактов моделей
- **Docker** - контейнеризация сервисов
- **Jupyter Notebook** - пример ML-пайплайна

### Установка
```bash
git clone https://github.com/yourusername/mlflow-demo.git
cd mlflow-demo
```

## 🌐 Доступ к сервисам
| Сервис          | URL                          | Учетные данные                      |
|-----------------|------------------------------|-------------------------------------|
| MLflow UI       | http://localhost:5000        | -                                   |
| MinIO Console   | http://localhost:9001        | minio-access-key`/`minio-secret-key |
| Jupyter Lab     | http://localhost:8888        | token: your_token                   |

## 📊 Внутри ноубука демонстрация:
1. Загрузка тестовых данных
2. Предобработка данных:
   - Сжатие
   - Нормализация
4. Бейзлайн-модель (RidgeClassifier)
5. Логирование экспериментов:
   - Логистическая регрессия
   - Случайный лес
6. Сравнение метрик:
   - Accuracy
   - F1-score
   - ROC-AUC
