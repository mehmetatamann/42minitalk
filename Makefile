SERVER			=	server
SERVER_SRC		=	server.c

SERVER_B		=	server_bonus
SERVER_BSRC		=	server_bonus.c

CLIENT			=	client
CLIENT_SRC		=	client.c

CLIENT_B		=	client_bonus
CLIENT_BSRC		=	client_bonus.c

CC				=	gcc
RM 				=	rm -rf
FLAGS			= 	-Wall -Werror -Wextra
NAME		=	./libft/libft.a ./ft_printf/libftprintf.a


all: $(SERVER) $(CLIENT)

$(SERVER):
	$(CC) $(FLAGS) $(SERVER_SRC) $(NAME) -o $(SERVER)

$(CLIENT):	
	$(CC) $(FLAGS) $(CLIENT_SRC) $(NAME) -o $(CLIENT)

clean:
	$(RM) $(SERVER) $(CLIENT) $(SERVER_B) $(CLIENT_B)

fclean: clean

re: fclean all bonus

bonus: $(SERVER_B) $(CLIENT_B)

$(SERVER_B) :
	$(CC) $(FLAGS) $(SERVER_BSRC) $(NAME) -o $(SERVER_B)

$(CLIENT_B) :
	$(CC) $(FLAGS) $(CLIENT_BSRC) $(NAME) -o $(CLIENT_B)
	

.PHONY: all clean fclean re bonus