question1 = Question.create!(body_type: 1, selection_type: 1)
BodyImage.create!(question: question1, image_path: '/test_folder/test.png')
SelectionText.create!(question: question1, text1: 'YES', text2: 'NO')

question2 = Question.create!(body_type: 2, selection_type: 1)
BodyText.create!(question: question2, text: 'Are you programer?')
SelectionText.create!(question: question2, text1: 'YES', text2: 'NO')
