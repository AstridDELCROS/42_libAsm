NAME = libasm.a

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

CC = gcc

CCFLAGS = -Wall -Wextra -Werror
SFLAGS = -f elf64

OBJ = $(SRC:.s=.o)

%.o: %.s
	nasm $(SFLAGS) $< -o $@

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

test:
	$(CC) $(CCFLAGS) -c main.c
	$(CC) $(CCFLAGS) main.o $(NAME)

all: $(NAME)

clean:
	/bin/rm -f $(OBJ)
fclean: clean
	/bin/rm -f $(NAME)
	/bin/rm -f a.out
re: fclean all

.PHONY: all clean fclean re
