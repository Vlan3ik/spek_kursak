import os
import re

def scan_project(project_dir):
    # Проверяем, что директория существует
    if not os.path.exists(project_dir):
        print(f"Директория {project_dir} не существует.")
        return

    # Обходим все файлы и папки в директории проекта
    for root, dirs, files in os.walk(project_dir):
        for file_name in files:
            file_path = os.path.join(root, file_name)
            print(f"Файл: {file_path}")

            # Открываем и читаем содержимое файла
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as file:
                file_content = file.read()

                # Пример: Ищем все строки, содержащие "Window" в XAML файлах
                if file_name.endswith('.xaml'):
                    windows = re.findall(r'<Window.*?>', file_content)
                    if windows:
                        print(f"Найдены Window в файле {file_name}:")
                        for window in windows:
                            print(window)

                # Пример: Ищем все строки, содержащие "Button" в XAML файлах
                buttons = re.findall(r'<Button.*?>', file_content)
                if buttons:
                    print(f"Найдены Button в файле {file_name}:")
                    for button in buttons:
                        print(button)

                # Пример: Ищем все строки, содержащие "Click" в C# файлах
                if file_name.endswith('.cs'):
                    clicks = re.findall(r'Click\s*\(', file_content)
                    if clicks:
                        print(f"Найдены Click в файле {file_name}:")
                        for click in clicks:
                            print(click)

                # Пример: Выводим первые 10 строк файла
                print("Первые 10 строк файла:")
                print('\n'.join(file_content.splitlines()[:10]))
                print("-" * 80)

if __name__ == "__main__":
    project_directory = "путь_к_вашему_проекту"
    scan_project(project_directory)