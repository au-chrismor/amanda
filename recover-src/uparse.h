/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_UPARSE_H_INCLUDED
# define YY_YY_UPARSE_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    LISTHOST = 258,
    LISTDISK = 259,
    LISTPROPERTY = 260,
    SETHOST = 261,
    SETDISK = 262,
    SETDATE = 263,
    SETTAPE = 264,
    SETMODE = 265,
    SETDEVICE = 266,
    SETPROPERTY = 267,
    CD = 268,
    CDX = 269,
    QUIT = 270,
    DHIST = 271,
    LS = 272,
    ADD = 273,
    ADDX = 274,
    EXTRACT = 275,
    DASH_H = 276,
    LIST = 277,
    DELETE = 278,
    DELETEX = 279,
    PWD = 280,
    CLEAR = 281,
    HELP = 282,
    LCD = 283,
    LPWD = 284,
    MODE = 285,
    SMB = 286,
    TAR = 287,
    APPEND = 288,
    PRIORITY = 289,
    SETTRANSLATE = 290,
    STORAGE = 291,
    NL = 292,
    STRING = 293
  };
#endif
/* Tokens.  */
#define LISTHOST 258
#define LISTDISK 259
#define LISTPROPERTY 260
#define SETHOST 261
#define SETDISK 262
#define SETDATE 263
#define SETTAPE 264
#define SETMODE 265
#define SETDEVICE 266
#define SETPROPERTY 267
#define CD 268
#define CDX 269
#define QUIT 270
#define DHIST 271
#define LS 272
#define ADD 273
#define ADDX 274
#define EXTRACT 275
#define DASH_H 276
#define LIST 277
#define DELETE 278
#define DELETEX 279
#define PWD 280
#define CLEAR 281
#define HELP 282
#define LCD 283
#define LPWD 284
#define MODE 285
#define SMB 286
#define TAR 287
#define APPEND 288
#define PRIORITY 289
#define SETTRANSLATE 290
#define STORAGE 291
#define NL 292
#define STRING 293

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 45 "uparse.y" /* yacc.c:1909  */

	int	intval;
	double	floatval;
	char *	strval;
	int	subtok;

#line 137 "uparse.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_UPARSE_H_INCLUDED  */
