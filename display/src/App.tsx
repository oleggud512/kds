import { BrowserRouter, Routes, Route } from "react-router-dom";
// import './App.css'
import Layout from './pages/Layout';
import Kitchen from './pages/Kitchen';
import NoPage from './pages/NoPage';

function MyRouter() {
  return (
    <Routes>
      <Route path="/" element={<Layout />}>
        <Route index element={<Kitchen />} />
        <Route path="*" element={<NoPage />} />
      </Route>
    </Routes>
  )
}

function App() {
  return (
    <BrowserRouter>
      <MyRouter />
    </BrowserRouter>
  )
}

export default App
