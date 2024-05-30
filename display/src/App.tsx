import { BrowserRouter, Routes, Route } from "react-router-dom";
import './App.css'
import Layout from './pages/Layout';
import Main from './pages/Main';
import Kitchen from './pages/Kitchen';
import Admin from './pages/Admin';
import NoPage from './pages/NoPage';

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Layout />}>
          <Route index element={<Main />} />
          <Route path="kitchen" element={<Kitchen />} />
          <Route path="admin" element={<Admin />} />
          <Route path="*" element={<NoPage />} />
        </Route>
      </Routes>
    </BrowserRouter>
  )
}

export default App
