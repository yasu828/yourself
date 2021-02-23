import axios from 'axios';
window.addEventListener("load", () => {
  const submit = document.getElementById("submit");
  submit.addEventListener("click", (e) => {
    const formData = new FormData(document.getElementById("form"));
    e.preventDefault();
    axios.post('/answers', formData)
      .then(function (res) {
        const item = res.data.post;
        const list = document.getElementById("list");
        const formText = document.getElementById("answer");
        const HTML = `
                  <div class="post" data-id=${item.id}>
                    <div class="postlist">
                      投稿日時：${item.created_at}
                    </div>
                    <div class="postlist">
                    ${item.answer}
                    </div>
                  </div>`;
        list.insertAdjacentHTML("afterend", HTML);
        formText.value = "";
      });
  });
})