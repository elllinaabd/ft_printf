NAME	=	libftprintf.a

SRCS	=	ft_printf.c symbol.c number.c hex_number.c main.c

HEADER	=	./
HEAD	=	ft_printf.h
OBJ		=	$(patsubst %.c, %.o, $(SRCS))

CC		=	gcc
CFLAGS	=	-Wall -Wextra -Werror -I$(HEADER)

.PHONY	:	all clean fclean re 

all		:	$(NAME)

$(NAME)	:	$(OBJ) $(HEAD)
			ar rcs $(NAME) $?
%.o : %.c	$(HEAD)
			$(CC) $(CFLAGS) -c $< -o $@	

bonus 	:
			make OBJ="$(OBJ_B)" all

clean	:	
		@rm -f $(OBJ) $(OBJ_B)

fclean	:	clean
			@$(RM) $(NAME)

re		:	fclean all
