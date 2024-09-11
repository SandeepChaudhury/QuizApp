class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Who is the Prime Minister of India?",
    "options": ['Manmohan Singh', 'Narendra Modi', 'Rahul Gandhi', 'Mamta Banerjee'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "What is the capital of India?",
    "options": ['Mumbai', 'Hyderabad', 'New Delhi', 'Kolkata'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Which company invented flutter?",
    "options": ['Amazon', 'Apple', 'Google', 'Meta'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What is the latest flutter version?",
    "options": ['1', '2', '3', '4'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Which is the latest Iphone model?",
    "options": ['15', '16', '17', '18'],
    "answer_index": 1,
  },
];
