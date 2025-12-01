select * from college

CREATE OR REPLACE FUNCTION get_total_student(total_student integer)
RETURNS varchar AS $$
DECLARE C_T_total_student TEXT;
BEGIN
    if total_student <=4000   THEN C_T_total_student := 'bad';
		elseif total_student <= 6000 THEN C_T_total_student := 'good';
		else C_T_total_student := 'excelent';
		end if;
		return C_T_total_student;
END;
$$ LANGUAGE plpgsql;

select get_total_student(5000)

CREATE OR REPLACE FUNCTION get_total_staff(total_staff integer)
RETURNS varchar AS $$
DECLARE C_total_staff TEXT;
BEGIN
    if total_staff <= 10 THEN C_total_staff := 'Poor';
		elseif total_staff <= 30 THEN C_total_staff := 'Average';
		else C_total_staff := 'Excelent';
		end if;
		return C_total_staff;
END;
$$ LANGUAGE plpgsql;

select get_total_staff(50)
