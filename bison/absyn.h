typedef struct A_pos_ *A_pos;
struct A_pos_
{
    int _line_no;
};

typedef struct A_var_ *A_var;
typedef struct A_exp_ *A_exp;
typedef struct A_dec_ *A_dec;
typedef struct A_ty_  *A_ty;
typedef struct A_field_ *A_field;
typedef struct A_filedList_ *A_filedList;
typedef struct A_expList_ *A_expList;
typedef struct A_fundec_ *A_funcdec;
typedef struct A_fundecList_ *A_fundecList_;
typedef struct A_decList_ *A_decList;
typedef struct A_namety_ *A_namety;
typedef struct A_nametyList_ *A_nametyList;
typedef struct A_efield_ *A_efield;
typedef struct A_efieldList *A_efieldList;

typedef enum {A_plusOp, A_minusOp, A_timesOp, A_divideOp, A_eqOp, A_neqOp, A_ltOp, A_leOp, A_gtOp, A_geOp} A_oper;
