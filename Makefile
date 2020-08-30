
.PHONY: all re fclean clean

NAME = libasm.a

SRC = 

SRCO = $(SRC:.c=.o)

HEADER = cub3d.h

FLAGS = -Wall -Werror -Wextra -g

all: $(NAME)

$(NAME): $(SRCO)


%.o:%.c $(HEADER)
	$(CC) $(FLAGS) -I ./mlx.h -c $< -o $@

clean:
	rm -f $(SRCO)

fclean: clean
	rm -f $(NAME)

re: fclean all
