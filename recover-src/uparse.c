/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 33 "uparse.y" /* yacc.c:339  */

#include "amanda.h"
#include "amrecover.h"

#define DATE_ALLOC_SIZE sizeof("YYYY-MM-DD-HH-MM-SS")   /* includes null */

void		yyerror(char *s);
extern int	yylex(void);
extern char *	yytext;

#line 77 "uparse.c" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "y.tab.h".  */
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
#line 45 "uparse.y" /* yacc.c:355  */

	int	intval;
	double	floatval;
	char *	strval;
	int	subtok;

#line 200 "uparse.c" /* yacc.c:355  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_UPARSE_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 217 "uparse.c" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  111
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   178

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  39
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  22
/* YYNRULES -- Number of rules.  */
#define YYNRULES  107
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  171

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   293

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,    70,    70,    71,    72,    73,    74,    75,    76,    77,
      78,    79,    80,    81,    85,    86,    87,    88,    89,    90,
      91,    92,    93,    94,    95,    96,    97,    98,    99,   100,
     101,   102,   103,   104,   105,   106,   107,   108,   109,   110,
     111,   112,   113,   114,   115,   116,   117,   118,   119,   120,
     121,   122,   123,   124,   125,   126,   127,   128,   129,   130,
     131,   135,   180,   181,   185,   186,   187,   188,   189,   190,
     191,   192,   193,   194,   195,   196,   197,   201,   202,   206,
     210,   211,   215,   219,   220,   224,   228,   229,   233,   237,
     238,   242,   243,   244,   248,   249,   253,   254,   258,   259,
     263,   272,   273,   277,   278,   282,   286,   287
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "LISTHOST", "LISTDISK", "LISTPROPERTY",
  "SETHOST", "SETDISK", "SETDATE", "SETTAPE", "SETMODE", "SETDEVICE",
  "SETPROPERTY", "CD", "CDX", "QUIT", "DHIST", "LS", "ADD", "ADDX",
  "EXTRACT", "DASH_H", "LIST", "DELETE", "DELETEX", "PWD", "CLEAR", "HELP",
  "LCD", "LPWD", "MODE", "SMB", "TAR", "APPEND", "PRIORITY",
  "SETTRANSLATE", "STORAGE", "NL", "STRING", "$accept", "ucommand",
  "set_command", "setdate_command", "display_command", "quit_command",
  "add_command", "add_path", "addx_command", "addx_path", "delete_command",
  "delete_path", "deletex_command", "deletex_path", "local_command",
  "help_command", "extract_command", "invalid_command", "property_value",
  "storage_value", "invalid_string", "bogus_string", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293
};
# endif

#define YYPACT_NINF -131

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-131)))

#define YYTABLE_NINF -1

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     113,   -21,    -8,    -2,     2,   -35,     4,     6,   -24,   -12,
      -6,     9,    13,    20,    22,    25,   -20,   -16,    33,    35,
      10,    15,    37,    39,    41,    43,    47,    49,    51,    53,
      55,    64,  -131,  -131,  -131,  -131,  -131,  -131,  -131,  -131,
    -131,  -131,  -131,  -131,  -131,    55,  -131,  -131,    59,  -131,
    -131,  -131,    61,    65,  -131,    67,  -131,    69,    71,    73,
    -131,  -131,    28,  -131,    75,     0,   107,  -131,   109,  -131,
     115,  -131,   117,  -131,  -131,  -131,  -131,  -131,  -131,  -131,
     119,  -131,   122,  -131,  -131,  -131,   124,  -131,   126,  -131,
     128,  -131,  -131,  -131,  -131,  -131,  -131,  -131,   130,  -131,
    -131,  -131,  -131,  -131,   132,  -131,    53,  -131,  -131,    55,
    -131,  -131,  -131,  -131,  -131,  -131,  -131,  -131,   134,  -131,
    -131,  -131,  -131,  -131,  -131,  -131,  -131,   136,  -131,  -131,
     138,  -131,   109,  -131,   109,  -131,   109,  -131,  -131,  -131,
    -131,  -131,  -131,  -131,  -131,  -131,  -131,  -131,  -131,  -131,
    -131,  -131,  -131,  -131,  -131,    31,  -131,  -131,  -131,  -131,
    -131,   140,  -131,   109,  -131,  -131,  -131,  -131,  -131,  -131,
    -131
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     0,     0,     0,     0,    30,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     2,     3,     4,     5,     6,     7,     8,     9,
      10,    11,    12,    13,    14,     0,    15,    17,     0,    19,
      20,    26,     0,     0,    62,     0,    32,     0,     0,     0,
      59,    58,     0,    36,     0,     0,     0,    44,     0,    50,
       0,    53,     0,    77,    78,    64,    65,    66,    67,    81,
       0,    84,     0,    98,    99,    69,     0,    87,     0,    90,
       0,    71,    72,    73,    74,    96,    97,    95,     0,    91,
      92,    75,    76,    21,     0,   104,     0,    60,   107,     0,
     100,     1,   105,    16,    18,    24,    25,    28,     0,    61,
      63,    31,    33,    54,    56,    55,    57,     0,    34,    37,
       0,    45,     0,    46,     0,   102,     0,    40,    48,    49,
      51,    52,    79,    80,    82,    83,    68,    70,    85,    86,
      88,    89,    93,    94,    23,     0,   103,   106,    27,    29,
      38,     0,    47,     0,    41,    42,   101,    22,    35,    39,
      43
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -131,  -131,  -131,  -131,  -131,  -131,  -131,  -131,  -131,  -131,
    -131,  -131,  -131,  -131,  -131,  -131,  -131,  -131,  -130,     8,
      -3,   -44
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    31,    32,    33,    34,    35,    36,    80,    37,    82,
      38,    88,    39,    90,    40,    41,    42,    43,   137,   107,
      46,   110
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      50,   112,   164,    53,   165,    61,   166,    58,    59,    62,
      74,    76,    78,    60,    45,    84,    44,    45,    79,    92,
      94,    96,    81,   100,   102,    63,    64,    65,    66,    47,
      48,    67,    68,   170,   130,    49,    45,   131,   132,    51,
      52,    54,    55,    56,    57,   114,    69,    70,    87,   116,
      71,    72,   120,    89,   122,   124,   126,    73,    45,    75,
      45,   129,    77,    45,   111,   157,   127,   139,   167,   141,
      83,    45,    85,    86,    91,    45,    93,    45,    95,    45,
      97,    98,     0,   147,    99,    45,   101,    45,   103,   104,
     105,   106,   108,   109,     0,   153,   113,    45,   115,    45,
       0,   155,   117,   118,   119,    45,   121,    45,   123,    45,
     125,    45,   128,    45,   156,   159,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,     0,    19,    20,    21,    22,    23,
      24,    25,    26,    27,   133,   134,   135,   136,    28,    29,
       0,    30,   138,    45,   140,    45,   142,   143,   169,   144,
     145,   146,    45,   148,   149,   150,   151,   152,    45,   154,
      45,   158,    45,   160,   161,   162,   163,   168,    45
};

static const yytype_int16 yycheck[] =
{
       3,    45,   132,    38,   134,     8,   136,    31,    32,    21,
      13,    14,    15,    37,    38,    18,    37,    38,    38,    22,
      23,    24,    38,    26,    27,    37,    38,    33,    34,    37,
      38,    37,    38,   163,    34,    37,    38,    37,    38,    37,
      38,    37,    38,    37,    38,    48,    37,    38,    38,    52,
      37,    38,    55,    38,    57,    58,    59,    37,    38,    37,
      38,    64,    37,    38,     0,   109,    38,    70,    37,    72,
      37,    38,    37,    38,    37,    38,    37,    38,    37,    38,
      37,    38,    -1,    86,    37,    38,    37,    38,    37,    38,
      37,    38,    37,    38,    -1,    98,    37,    38,    37,    38,
      -1,   104,    37,    38,    37,    38,    37,    38,    37,    38,
      37,    38,    37,    38,   106,   118,     3,     4,     5,     6,
       7,     8,     9,    10,    11,    12,    13,    14,    15,    16,
      17,    18,    19,    20,    -1,    22,    23,    24,    25,    26,
      27,    28,    29,    30,    37,    38,    37,    38,    35,    36,
      -1,    38,    37,    38,    37,    38,    37,    38,   161,    37,
      38,    37,    38,    37,    38,    37,    38,    37,    38,    37,
      38,    37,    38,    37,    38,    37,    38,    37,    38
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     4,     5,     6,     7,     8,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    22,
      23,    24,    25,    26,    27,    28,    29,    30,    35,    36,
      38,    40,    41,    42,    43,    44,    45,    47,    49,    51,
      53,    54,    55,    56,    37,    38,    59,    37,    38,    37,
      59,    37,    38,    38,    37,    38,    37,    38,    31,    32,
      37,    59,    21,    37,    38,    33,    34,    37,    38,    37,
      38,    37,    38,    37,    59,    37,    59,    37,    59,    38,
      46,    38,    48,    37,    59,    37,    38,    38,    50,    38,
      52,    37,    59,    37,    59,    37,    59,    37,    38,    37,
      59,    37,    59,    37,    38,    37,    38,    58,    37,    38,
      60,     0,    60,    37,    59,    37,    59,    37,    38,    37,
      59,    37,    59,    37,    59,    37,    59,    38,    37,    59,
      34,    37,    38,    37,    38,    37,    38,    57,    37,    59,
      37,    59,    37,    38,    37,    38,    37,    59,    37,    38,
      37,    38,    37,    59,    37,    59,    58,    60,    37,    59,
      37,    38,    37,    38,    57,    57,    57,    37,    37,    59,
      57
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    39,    40,    40,    40,    40,    40,    40,    40,    40,
      40,    40,    40,    40,    41,    41,    41,    41,    41,    41,
      41,    41,    41,    41,    41,    41,    41,    41,    41,    41,
      41,    41,    41,    41,    41,    41,    41,    41,    41,    41,
      41,    41,    41,    41,    41,    41,    41,    41,    41,    41,
      41,    41,    41,    41,    41,    41,    41,    41,    41,    41,
      41,    42,    42,    42,    43,    43,    43,    43,    43,    43,
      43,    43,    43,    43,    43,    43,    43,    44,    44,    45,
      46,    46,    47,    48,    48,    49,    50,    50,    51,    52,
      52,    53,    53,    53,    53,    53,    54,    54,    55,    55,
      56,    57,    57,    58,    58,    59,    60,    60
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     2,     2,     3,     2,     3,     2,
       2,     2,     4,     3,     3,     3,     2,     4,     3,     4,
       1,     3,     2,     3,     3,     5,     2,     3,     4,     5,
       3,     4,     4,     5,     2,     3,     3,     4,     3,     3,
       2,     3,     3,     2,     3,     3,     3,     3,     2,     2,
       2,     3,     2,     3,     2,     2,     2,     2,     3,     2,
       3,     2,     2,     2,     2,     2,     2,     2,     2,     3,
       2,     1,     3,     2,     1,     3,     2,     1,     3,     2,
       1,     2,     2,     3,     3,     2,     2,     2,     2,     2,
       2,     2,     1,     2,     1,     2,     2,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 14:
#line 85 "uparse.y" /* yacc.c:1646  */
    { list_host(); }
#line 1417 "uparse.c" /* yacc.c:1646  */
    break;

  case 15:
#line 86 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1423 "uparse.c" /* yacc.c:1646  */
    break;

  case 16:
#line 87 "uparse.y" /* yacc.c:1646  */
    { list_disk((yyvsp[-1].strval)); amfree((yyvsp[-1].strval)); }
#line 1429 "uparse.c" /* yacc.c:1646  */
    break;

  case 17:
#line 88 "uparse.y" /* yacc.c:1646  */
    { list_disk(NULL); }
#line 1435 "uparse.c" /* yacc.c:1646  */
    break;

  case 18:
#line 89 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); amfree((yyvsp[-1].strval)); }
#line 1441 "uparse.c" /* yacc.c:1646  */
    break;

  case 19:
#line 90 "uparse.y" /* yacc.c:1646  */
    { list_property(); }
#line 1447 "uparse.c" /* yacc.c:1646  */
    break;

  case 20:
#line 91 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1453 "uparse.c" /* yacc.c:1646  */
    break;

  case 21:
#line 92 "uparse.y" /* yacc.c:1646  */
    { set_translate(NULL); }
#line 1459 "uparse.c" /* yacc.c:1646  */
    break;

  case 22:
#line 93 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1465 "uparse.c" /* yacc.c:1646  */
    break;

  case 23:
#line 94 "uparse.y" /* yacc.c:1646  */
    { set_translate((yyvsp[-1].strval)); amfree((yyvsp[-1].strval)); }
#line 1471 "uparse.c" /* yacc.c:1646  */
    break;

  case 24:
#line 95 "uparse.y" /* yacc.c:1646  */
    { set_host((yyvsp[-1].strval)); amfree((yyvsp[-1].strval)); }
#line 1477 "uparse.c" /* yacc.c:1646  */
    break;

  case 25:
#line 96 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); amfree((yyvsp[-1].strval)); }
#line 1483 "uparse.c" /* yacc.c:1646  */
    break;

  case 26:
#line 97 "uparse.y" /* yacc.c:1646  */
    { yyerror("Argument required"); }
#line 1489 "uparse.c" /* yacc.c:1646  */
    break;

  case 27:
#line 98 "uparse.y" /* yacc.c:1646  */
    { set_disk((yyvsp[-2].strval), (yyvsp[-1].strval)); amfree((yyvsp[-2].strval)); amfree((yyvsp[-1].strval)); }
#line 1495 "uparse.c" /* yacc.c:1646  */
    break;

  case 28:
#line 99 "uparse.y" /* yacc.c:1646  */
    { set_disk((yyvsp[-1].strval), NULL); amfree((yyvsp[-1].strval)); }
#line 1501 "uparse.c" /* yacc.c:1646  */
    break;

  case 29:
#line 100 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); amfree((yyvsp[-2].strval)); amfree((yyvsp[-1].strval)); }
#line 1507 "uparse.c" /* yacc.c:1646  */
    break;

  case 30:
#line 101 "uparse.y" /* yacc.c:1646  */
    { yyerror("Argument required"); }
#line 1513 "uparse.c" /* yacc.c:1646  */
    break;

  case 31:
#line 102 "uparse.y" /* yacc.c:1646  */
    { set_tape((yyvsp[-1].strval)); amfree((yyvsp[-1].strval)); }
#line 1519 "uparse.c" /* yacc.c:1646  */
    break;

  case 32:
#line 103 "uparse.y" /* yacc.c:1646  */
    { set_tape("default"); }
#line 1525 "uparse.c" /* yacc.c:1646  */
    break;

  case 33:
#line 104 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); amfree((yyvsp[-1].strval)); }
#line 1531 "uparse.c" /* yacc.c:1646  */
    break;

  case 34:
#line 105 "uparse.y" /* yacc.c:1646  */
    { set_device(NULL, (yyvsp[-1].strval)); amfree((yyvsp[-1].strval)); }
#line 1537 "uparse.c" /* yacc.c:1646  */
    break;

  case 35:
#line 106 "uparse.y" /* yacc.c:1646  */
    { set_device((yyvsp[-2].strval), (yyvsp[-1].strval)); amfree((yyvsp[-2].strval)); amfree((yyvsp[-1].strval));  }
#line 1543 "uparse.c" /* yacc.c:1646  */
    break;

  case 36:
#line 107 "uparse.y" /* yacc.c:1646  */
    { set_device(NULL, NULL); }
#line 1549 "uparse.c" /* yacc.c:1646  */
    break;

  case 37:
#line 108 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); amfree((yyvsp[-1].strval)); }
#line 1555 "uparse.c" /* yacc.c:1646  */
    break;

  case 38:
#line 109 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); amfree((yyvsp[-1].strval)); }
#line 1561 "uparse.c" /* yacc.c:1646  */
    break;

  case 39:
#line 110 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); amfree((yyvsp[-2].strval)); amfree((yyvsp[-1].strval)); }
#line 1567 "uparse.c" /* yacc.c:1646  */
    break;

  case 40:
#line 111 "uparse.y" /* yacc.c:1646  */
    { set_property_name((yyvsp[-1].strval), 0); amfree((yyvsp[-1].strval)); }
#line 1573 "uparse.c" /* yacc.c:1646  */
    break;

  case 41:
#line 112 "uparse.y" /* yacc.c:1646  */
    { set_property_name((yyvsp[-1].strval), 1); amfree((yyvsp[-1].strval)); }
#line 1579 "uparse.c" /* yacc.c:1646  */
    break;

  case 42:
#line 113 "uparse.y" /* yacc.c:1646  */
    { set_property_name((yyvsp[-1].strval), 0); amfree((yyvsp[-1].strval)); }
#line 1585 "uparse.c" /* yacc.c:1646  */
    break;

  case 43:
#line 114 "uparse.y" /* yacc.c:1646  */
    { set_property_name((yyvsp[-1].strval), 1); amfree((yyvsp[-1].strval)); }
#line 1591 "uparse.c" /* yacc.c:1646  */
    break;

  case 44:
#line 115 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1597 "uparse.c" /* yacc.c:1646  */
    break;

  case 45:
#line 116 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1603 "uparse.c" /* yacc.c:1646  */
    break;

  case 46:
#line 117 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1609 "uparse.c" /* yacc.c:1646  */
    break;

  case 47:
#line 118 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1615 "uparse.c" /* yacc.c:1646  */
    break;

  case 48:
#line 119 "uparse.y" /* yacc.c:1646  */
    { cd_glob((yyvsp[-1].strval), 1); amfree((yyvsp[-1].strval)); }
#line 1621 "uparse.c" /* yacc.c:1646  */
    break;

  case 49:
#line 120 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1627 "uparse.c" /* yacc.c:1646  */
    break;

  case 50:
#line 121 "uparse.y" /* yacc.c:1646  */
    { yyerror("Argument required"); }
#line 1633 "uparse.c" /* yacc.c:1646  */
    break;

  case 51:
#line 122 "uparse.y" /* yacc.c:1646  */
    { cd_regex((yyvsp[-1].strval), 1); amfree((yyvsp[-1].strval)); }
#line 1639 "uparse.c" /* yacc.c:1646  */
    break;

  case 52:
#line 123 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); amfree((yyvsp[-1].strval)); }
#line 1645 "uparse.c" /* yacc.c:1646  */
    break;

  case 53:
#line 124 "uparse.y" /* yacc.c:1646  */
    { yyerror("Argument required"); }
#line 1651 "uparse.c" /* yacc.c:1646  */
    break;

  case 54:
#line 125 "uparse.y" /* yacc.c:1646  */
    { set_mode(SAMBA_SMBCLIENT); }
#line 1657 "uparse.c" /* yacc.c:1646  */
    break;

  case 55:
#line 126 "uparse.y" /* yacc.c:1646  */
    { set_mode(SAMBA_TAR); }
#line 1663 "uparse.c" /* yacc.c:1646  */
    break;

  case 56:
#line 127 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1669 "uparse.c" /* yacc.c:1646  */
    break;

  case 57:
#line 128 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1675 "uparse.c" /* yacc.c:1646  */
    break;

  case 58:
#line 129 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1681 "uparse.c" /* yacc.c:1646  */
    break;

  case 59:
#line 130 "uparse.y" /* yacc.c:1646  */
    { yyerror("Argument required"); }
#line 1687 "uparse.c" /* yacc.c:1646  */
    break;

  case 60:
#line 131 "uparse.y" /* yacc.c:1646  */
    { set_storage(); }
#line 1693 "uparse.c" /* yacc.c:1646  */
    break;

  case 61:
#line 135 "uparse.y" /* yacc.c:1646  */
    {
			time_t now;
			struct tm *t;
			int y=2000, m=0, d=1, h=0, mi=0, s=0;
			char *mydate = (yyvsp[-1].strval);

			now = time((time_t *)NULL);
			t = localtime(&now);
			if (t) {
			    y = 1900+t->tm_year;
			    m = t->tm_mon+1;
			    d = t->tm_mday;
			}
			if (sscanf(mydate, "---%d", &d) == 1 ||
			    sscanf(mydate, "--%d-%d", &m, &d) == 2 ||
			    sscanf(mydate, "%d-%d-%d-%d-%d-%d", &y, &m, &d, &h, &mi, &s) >= 3) {
			    if (y < 70) {
				y += 2000;
			    } else if (y < 100) {
				y += 1900;
			    }
			    if(y < 1000 || y > 9999) {
				printf("invalid year");
			    } else if(m < 1 || m > 12) {
				printf("invalid month");
			    } else if(d < 1 || d > 31) {
				printf("invalid day");
			    } else if(h < 0 || h > 24) {
				printf("invalid hour");
			    } else if(mi < 0 || mi > 59) {
				printf("invalid minute");
			    } else if(s < 0 || s > 59) {
				printf("invalid second");
			    } else {
				char result[DATE_ALLOC_SIZE];
				if (h == 0 && mi == 0 && s == 0)
				    g_snprintf(result, DATE_ALLOC_SIZE, "%04d-%02d-%02d", y, m, d);
				else
				    g_snprintf(result, DATE_ALLOC_SIZE, "%04d-%02d-%02d-%02d-%02d-%02d", y, m, d, h, mi, s);
				set_date(result);
			    }
			} else {
			    printf("Invalid date: %s\n", mydate);
			}
		     }
#line 1743 "uparse.c" /* yacc.c:1646  */
    break;

  case 62:
#line 180 "uparse.y" /* yacc.c:1646  */
    { yyerror("Argument required"); }
#line 1749 "uparse.c" /* yacc.c:1646  */
    break;

  case 63:
#line 181 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1755 "uparse.c" /* yacc.c:1646  */
    break;

  case 64:
#line 185 "uparse.y" /* yacc.c:1646  */
    { list_disk_history(); }
#line 1761 "uparse.c" /* yacc.c:1646  */
    break;

  case 65:
#line 186 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1767 "uparse.c" /* yacc.c:1646  */
    break;

  case 66:
#line 187 "uparse.y" /* yacc.c:1646  */
    { list_directory(); }
#line 1773 "uparse.c" /* yacc.c:1646  */
    break;

  case 67:
#line 188 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1779 "uparse.c" /* yacc.c:1646  */
    break;

  case 68:
#line 189 "uparse.y" /* yacc.c:1646  */
    { display_extract_list((yyvsp[-1].strval)); amfree((yyvsp[-1].strval)); }
#line 1785 "uparse.c" /* yacc.c:1646  */
    break;

  case 69:
#line 190 "uparse.y" /* yacc.c:1646  */
    { display_extract_list(NULL); }
#line 1791 "uparse.c" /* yacc.c:1646  */
    break;

  case 70:
#line 191 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1797 "uparse.c" /* yacc.c:1646  */
    break;

  case 71:
#line 192 "uparse.y" /* yacc.c:1646  */
    { show_directory(); }
#line 1803 "uparse.c" /* yacc.c:1646  */
    break;

  case 72:
#line 193 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1809 "uparse.c" /* yacc.c:1646  */
    break;

  case 73:
#line 194 "uparse.y" /* yacc.c:1646  */
    { clear_extract_list(); }
#line 1815 "uparse.c" /* yacc.c:1646  */
    break;

  case 74:
#line 195 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1821 "uparse.c" /* yacc.c:1646  */
    break;

  case 75:
#line 196 "uparse.y" /* yacc.c:1646  */
    { show_mode (); }
#line 1827 "uparse.c" /* yacc.c:1646  */
    break;

  case 76:
#line 197 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1833 "uparse.c" /* yacc.c:1646  */
    break;

  case 77:
#line 201 "uparse.y" /* yacc.c:1646  */
    { quit(); }
#line 1839 "uparse.c" /* yacc.c:1646  */
    break;

  case 78:
#line 202 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1845 "uparse.c" /* yacc.c:1646  */
    break;

  case 80:
#line 210 "uparse.y" /* yacc.c:1646  */
    { add_glob((yyvsp[0].strval)); amfree((yyvsp[0].strval)); }
#line 1851 "uparse.c" /* yacc.c:1646  */
    break;

  case 81:
#line 211 "uparse.y" /* yacc.c:1646  */
    { add_glob((yyvsp[0].strval)); amfree((yyvsp[0].strval)); }
#line 1857 "uparse.c" /* yacc.c:1646  */
    break;

  case 83:
#line 219 "uparse.y" /* yacc.c:1646  */
    { add_regex((yyvsp[0].strval)); amfree((yyvsp[0].strval)); }
#line 1863 "uparse.c" /* yacc.c:1646  */
    break;

  case 84:
#line 220 "uparse.y" /* yacc.c:1646  */
    { add_regex((yyvsp[0].strval)); amfree((yyvsp[0].strval)); }
#line 1869 "uparse.c" /* yacc.c:1646  */
    break;

  case 86:
#line 228 "uparse.y" /* yacc.c:1646  */
    { delete_glob((yyvsp[0].strval)); amfree((yyvsp[0].strval)); }
#line 1875 "uparse.c" /* yacc.c:1646  */
    break;

  case 87:
#line 229 "uparse.y" /* yacc.c:1646  */
    { delete_glob((yyvsp[0].strval)); amfree((yyvsp[0].strval)); }
#line 1881 "uparse.c" /* yacc.c:1646  */
    break;

  case 89:
#line 237 "uparse.y" /* yacc.c:1646  */
    { delete_regex((yyvsp[0].strval)); amfree((yyvsp[0].strval)); }
#line 1887 "uparse.c" /* yacc.c:1646  */
    break;

  case 90:
#line 238 "uparse.y" /* yacc.c:1646  */
    { delete_regex((yyvsp[0].strval)); amfree((yyvsp[0].strval)); }
#line 1893 "uparse.c" /* yacc.c:1646  */
    break;

  case 91:
#line 242 "uparse.y" /* yacc.c:1646  */
    { char * buf= g_get_current_dir(); puts(buf); free(buf); }
#line 1899 "uparse.c" /* yacc.c:1646  */
    break;

  case 92:
#line 243 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1905 "uparse.c" /* yacc.c:1646  */
    break;

  case 93:
#line 244 "uparse.y" /* yacc.c:1646  */
    {
		local_cd((yyvsp[-1].strval));
		amfree((yyvsp[-1].strval));
	}
#line 1914 "uparse.c" /* yacc.c:1646  */
    break;

  case 94:
#line 248 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1920 "uparse.c" /* yacc.c:1646  */
    break;

  case 95:
#line 249 "uparse.y" /* yacc.c:1646  */
    { yyerror("Argument required"); }
#line 1926 "uparse.c" /* yacc.c:1646  */
    break;

  case 96:
#line 253 "uparse.y" /* yacc.c:1646  */
    { help_list(); }
#line 1932 "uparse.c" /* yacc.c:1646  */
    break;

  case 97:
#line 254 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1938 "uparse.c" /* yacc.c:1646  */
    break;

  case 98:
#line 258 "uparse.y" /* yacc.c:1646  */
    { extract_files(); }
#line 1944 "uparse.c" /* yacc.c:1646  */
    break;

  case 99:
#line 259 "uparse.y" /* yacc.c:1646  */
    { yyerror("Invalid argument"); }
#line 1950 "uparse.c" /* yacc.c:1646  */
    break;

  case 100:
#line 263 "uparse.y" /* yacc.c:1646  */
    {
	    char * errstr = g_strjoin(NULL, "Invalid command: ", (yyvsp[-1].strval), NULL);
	    yyerror(errstr);
	    amfree(errstr);
	    YYERROR;
	}
#line 1961 "uparse.c" /* yacc.c:1646  */
    break;

  case 101:
#line 272 "uparse.y" /* yacc.c:1646  */
    { add_property_value((yyvsp[-1].strval)); amfree( (yyvsp[-1].strval)); }
#line 1967 "uparse.c" /* yacc.c:1646  */
    break;

  case 102:
#line 273 "uparse.y" /* yacc.c:1646  */
    { ; }
#line 1973 "uparse.c" /* yacc.c:1646  */
    break;

  case 103:
#line 277 "uparse.y" /* yacc.c:1646  */
    { add_storage_value((yyvsp[-1].strval)); amfree( (yyvsp[-1].strval)); }
#line 1979 "uparse.c" /* yacc.c:1646  */
    break;

  case 104:
#line 278 "uparse.y" /* yacc.c:1646  */
    { ; }
#line 1985 "uparse.c" /* yacc.c:1646  */
    break;

  case 105:
#line 282 "uparse.y" /* yacc.c:1646  */
    { amfree((yyvsp[-1].strval)); }
#line 1991 "uparse.c" /* yacc.c:1646  */
    break;

  case 106:
#line 286 "uparse.y" /* yacc.c:1646  */
    { amfree((yyvsp[-1].strval)); }
#line 1997 "uparse.c" /* yacc.c:1646  */
    break;

  case 107:
#line 287 "uparse.y" /* yacc.c:1646  */
    { ; }
#line 2003 "uparse.c" /* yacc.c:1646  */
    break;


#line 2007 "uparse.c" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 290 "uparse.y" /* yacc.c:1906  */


void
yyerror(
    char *	s)
{
	g_printf("%s\n", s);
}
