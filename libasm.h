/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: drina <drina@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/30 20:14:33 by drina             #+#    #+#             */
/*   Updated: 2020/09/02 17:12:10 by drina            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H
# include <stdlib.h>

size_t		ft_strlen(char *str);
void		ft_strcpy(char *dst, char *src);
int			ft_strcmp(char *str1, char *str2);
int			ft_write(int fd, void *str, int bytes);
int			ft_read(int fd, void *str, int bytes);
char		*ft_strdup(char *str);


#endif