##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## my_sokoban
##

SRC = $(wildcard *c)

NAME = Devops

OBJ = $(SRC:.c=.o)

CFLAGS = -Wall -Wextra -lncurses

RM = rm -f

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(CFLAGS)
	$(RM) $(OBJ)

tests_run:
	make
	$(CC) test/test.c -o unit_tests --coverage -lcriterion
	./unit_tests

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)
	$(RM) a.out
	$(RM) *.o
	$(RM) unit_tests
	$(RM) *.gcda
	$(RM) *.gcno

re: fclean all
