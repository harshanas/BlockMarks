pragma solidity ^0.5.0;

contract MarksMgmt {
	// TODO :  Make a JSON File including {grade :[STUDENT IDs]}
	struct Student {
		uint id;
		int grade;
		int pLangMarks;
		int sLangMarks;
		int religionMarks;
		int mathsMarks;
		int aestheticsMarks;
	}

	mapping(uint=> Student) public students;


	function addMarks(uint id, int grade, int pLangMarks, int sLangMarks, int religionMarks, int mathsMarks, int aestheticsMarks) public {
		// Adds Marks to a respective Student ID
		Student storage studentMarks = students[id];
		studentMarks.grade = grade;
		studentMarks.pLangMarks = pLangMarks;
		studentMarks.sLangMarks = sLangMarks;
		studentMarks.religionMarks = religionMarks;
		studentMarks.mathsMarks = mathsMarks;
		studentMarks.aestheticsMarks = aestheticsMarks;
	}

	function showMarksById (uint id) public view returns (int grade, int pLangMarks, int sLangMarks, int religionMarks, int mathsMarks, int aestheticsMarks){
		// Shows Marks from a given Student ID
		return (students[id].grade, students[id].pLangMarks, students[id].sLangMarks, students[id].religionMarks, students[id].mathsMarks, students[id].aestheticsMarks);
	}
}