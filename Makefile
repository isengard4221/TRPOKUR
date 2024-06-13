# Имя исполняемого файла
PROG = hangman

# Компилятор
CC = g++

# Флаги компиляции
CFLAGS = -Wall -std=c++11

# Исходные файлы
SRCS = main.cpp

# Объектные файлы
OBJS = $(SRCS:.cpp=.o)

# Правило по умолчанию
all: $(PROG)

# Правило для создания исполняемого файла
$(PROG): $(OBJS)
	$(CC) $(CFLAGS) -o $(PROG) $(OBJS)

# Правило для создания объектных файлов
.cpp.o:
	$(CC) $(CFLAGS) -c $<

# Правило для очистки
clean:
	rm -f $(PROG) $(OBJS)
