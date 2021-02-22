window.addEventListener('load', () => {
    const incBtn = document.getElementById("incbtn")
    incBtn.addEventListener('click', (e) => {
        e.preventDefault();
        const addForm = document.getElementById("addinc")
        const HTML = `
        <div class="right">
            <form action="" , id="inner">
                <input type="text", id="pra", value="">
                <input type="button", id="btn", value="送信">
            </form>
        </div >`;
        addForm.insertAdjacentHTML("afterend", HTML);
    });
})