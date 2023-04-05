# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fakayumo <fakayumo@student.42abudhabi.a    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/15 23:24:19 by fakayumo          #+#    #+#              #
#    Updated: 2023/04/05 15:28:22 by fakayumo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = philo
SRC = philo.c philo_utils.c start_prog.c initialize.c check_done_eat_and_die.c routine.c
OBJS = $(SRC:.c=.o)
CC = gcc -pthread
CFLAGS = -Wall -Wextra -Werror
AI = "\t\t\t\t\t\t\t\t\t\t\t\033[36m F A R A N G I Z _ K A Y U M O V A \033[0m \n\n​​​​​"
ART3 = "\t\t\t\t\t\t\t██████╗░██╗░░██╗██╗██╗░░░░░░█████╗░░██████╗░█████╗░██████╗░██╗░░██╗███████╗██████╗░░██████╗\n\t\t\t\t\t\t\t██╔══██╗██║░░██║██║██║░░░░░██╔══██╗██╔════╝██╔══██╗██╔══██╗██║░░██║██╔════╝██╔══██╗██╔════╝\n\t\t\t\t\t\t\t██████╔╝███████║██║██║░░░░░██║░░██║╚█████╗░██║░░██║██████╔╝███████║█████╗░░██████╔╝╚█████╗░\n\t\t\t\t\t\t\t██╔═══╝░██╔══██║██║██║░░░░░██║░░██║░╚═══██╗██║░░██║██╔═══╝░██╔══██║██╔══╝░░██╔══██╗░╚═══██╗\n\t\t\t\t\t\t\t██║░░░░░██║░░██║██║███████╗╚█████╔╝██████╔╝╚█████╔╝██║░░░░░██║░░██║███████╗██║░░██║██████╔╝\n\t\t\t\t\t\t\t╚═╝░░░░░╚═╝░░╚═╝╚═╝╚══════╝░╚════╝░╚═════╝░░╚════╝░╚═╝░░░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═════╝░\n\n"
TEXT = $(ART3) $(AI)

all: ${NAME}

${NAME}: ${OBJS}
	${CC} -lpthread ${CFLAGS} ${OBJS} -o $@
	clear
	@echo $(TEXT) "\033[92m Done !\033[0m"

%.o: %.c philosophers.h
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

clean:
	rm -f *.o
	clear
	@echo	$(TEXT) "\033[31m Cleared !\033[0m"

fclean: clean
	rm -f ${NAME}
	clear
	@echo	$(TEXT) "\033[31m Cleared !\033[0m"



re: fclean all
	clear
	@echo	$(TEXT) "\033[92m Done !\033[0m"
