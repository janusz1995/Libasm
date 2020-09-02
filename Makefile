
.PHONY: all re fclean clean

NAME = libasm.a

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

SRCO = $(SRC:.s=.o)

HEADER = libasm.h

FLAGS = -fmacho64

all: $(NAME)

$(NAME): $(SRCO)
	ar rcs $(NAME) $(SRCO)

%.o:%.s $(HEADER)
	nasm $(FLAGS) $<

clean:
	rm -f $(SRCO)

fclean: clean
	rm -f $(NAME)

re: fclean all
