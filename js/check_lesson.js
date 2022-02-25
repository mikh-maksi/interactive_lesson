
function lesson (){
    query = 'http://innovations.kh.ua/probe/back/check_lesson/';
    console.log(query);
    fetch(query).then(response => response.json())
    .then(function (quiz) {
    // console.log(quiz[0]);
    // console.log(quiz[0].id);
    // console.log(quiz);
    
    var actions_arr = [[]];
    var student_id_arr = [];
    var task_id_arr=[];
    quiz.forEach( function(currentValue, index, arr ){
        if (actions_arr=== undefined){
            console.log(first);
        }
         console.log(currentValue.student_id + ' ' + currentValue.task_id);
         student_id_arr.push(currentValue.student_id);
         task_id_arr.push(currentValue.task_id);
        
        console.log(actions_arr);
    } ); 
    console.log(Math.max(student_id_arr));
    console.log(Math.max(task_id_arr));
    });
    
    
    
    let el = document.createElement("div");
    el.innerHTML = "Lesson";
    wrapper.appendChild(el);




}

btn.addEventListener("click", lesson);