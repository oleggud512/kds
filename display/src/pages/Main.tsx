import { Link } from "react-router-dom"


function Main() {
    return (
        <>
            <h1>Main</h1>
            <nav>
                <ul>
                <li>
                    <Link to="/kitchen">Kitchen</Link>
                </li>
                <li>
                    <Link to="/admin">Admin</Link>
                </li>
                </ul>
            </nav>
        </>
    )
}

export default Main